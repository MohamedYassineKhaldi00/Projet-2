import streamlit as st
from transformers import pipeline, AutoTokenizer, AutoModelForCausalLM
import torch

# Access the Hugging Face API token from secrets
huggingface_api_token = st.secrets["huggingface"]["api_token"]

# Use the API token to authenticate with Hugging Face
from huggingface_hub import login
login(token=huggingface_api_token)

# Create the LLM using Hugging Face Transformers
model_id = "meta-llama/Llama-3.2-1B-Instruct"
llm = pipeline(
    "text-generation",
    model=model_id,
    torch_dtype=torch.bfloat16,
    device_map="auto",
)

# Create the Embedding model using Hugging Face Transformers
tokenizer = AutoTokenizer.from_pretrained(model_id)
model = AutoModelForCausalLM.from_pretrained(model_id)


