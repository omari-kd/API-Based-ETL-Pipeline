import streamlit as st
import pandas as pd
import psycopg2

# --- Connect to Neon PostgreSQL using Streamlit secrets ---
conn = psycopg2.connect(**st.secrets["postgres"])
cur = conn.cursor()

# Set search_path to warehouse so you don't need to prefix tables
cur.execute('SET search_path TO warehouse;')
conn.commit()

st.set_page_config(page_title="Data Warehouse Dashboard", layout="wide")
st.title('ETL Data Warehouse Dashboard')

# --- Load data from warehouse ---
query = "SELECT * FROM warehouse.products;"
df = pd.read_sql(query, conn)


# --- Preview ---
st.subheader("Sales Data Preview")
st.dataframe(df)

# --- KPI Metrics ---
st.subheader("Key Metrics")
col1, col2, col3, col4 = st.columns(4)
col1.metric("Total Products", f"{len(df):,}")
col2.metric("Categories", df["category_name"].nunique())
col3.metric("Average Price ($)", f"{df['unit_price'].mean():.2f}")
col4.metric("Average Rating", f"{df['rating_score'].mean():.2f}")

# --- Charts ---
st.subheader("Visualisations")

# Category-wise average price
avg_by_category = df.groupby("category_name")["unit_price"].mean().reset_index()
st.bar_chart(avg_by_category, x="category_name", y="unit_price")

# Rating distribution per product
rating_chart = df.groupby("product_name")["rating_score"].mean().reset_index()
st.line_chart(rating_chart, x="product_name", y="rating_score")

# --- Top Rated Products ---
st.subheader("Top Rated Products")
top_rated = df.sort_values("rating_score", ascending=False).head(5)
st.table(top_rated[["product_name", "rating_score", "rating_count", "unit_price"]])

# --- Sidebar filter ---
st.sidebar.header("Filters")
selected_category = st.sidebar.selectbox("Select Category", ["All"] + list(df['category_name'].unique()))

if selected_category != "All":
    df = df[df["category_name"] == selected_category]

st.subheader(f"Filtered Data — {selected_category}")
st.dataframe(df)

# --- Close connection ---
conn.close()
