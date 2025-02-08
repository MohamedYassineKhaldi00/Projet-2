import streamlit as st
from langchain_neo4j import Neo4jGraph

# Access Neo4j credentials from secrets
neo4j_uri = st.secrets["neo4j"]["NEO4J_URI"]
neo4j_username = st.secrets["neo4j"]["NEO4J_USERNAME"]
neo4j_password = st.secrets["neo4j"]["NEO4J_PASSWORD"]

# Connect to Neo4j
graph = Neo4jGraph(
    url=neo4j_uri,
    username=neo4j_username,
    password=neo4j_password,
)

