# 🕵️‍♂️ Bug Hunter's Cloud Bucket Finder

## 🚀 About This Tool
This is a simple yet powerful Bash script designed for **bug bounty hunters** and **security researchers**. The tool takes a list of **subdomains** as input and a **keyword**, then generates various permutations that can be used to identify **cloud storage buckets** across different cloud providers (AWS S3, Google Cloud Storage, DigitalOcean Spaces, etc.).

## 🎯 Features
✅ Reads subdomains from a file 📂  
✅ Takes a **keyword** as input 🔑  
✅ Generates different **permutations** to aid in bucket discovery 🏗️  
✅ Saves the output in a text file for further use 📜  
✅ Helps in identifying misconfigured cloud storage buckets 🛑  

## 📌 How to Use

1️⃣ **Clone the repository**
```bash
 git clone https://github.com/yourusername/cloud-bucket-finder.git
 cd cloud-bucket-finder
```

2️⃣ **Make the script executable**
```bash
 chmod +x bucket_finder.sh
```

3️⃣ **Run the script**
```bash
 ./bucket_finder.sh
```

4️⃣ **Provide Inputs**
- Enter the path to your subdomain file (e.g., `subdomains.txt`)
- Enter the keyword to be used for permutations (e.g., `backup`, `test`, `storage`)

5️⃣ **Check the output file**
- The output will be saved in a file named `<keyword>.txt`
- Use this file to search for potential **misconfigured cloud storage buckets**

## 📖 Example Usage
### Input:
#### `subdomains.txt`
```
example
myapp
company
```
### Keyword:
```
storage
```
### Output (`storage.txt`):
```
storage-example
storage_example
example-storage
example_storage
storage-myapp
storage_myapp
myapp-storage
myapp_storage
storage-company
storage_company
company-storage
company_storage
```

## 🎯 Next Steps
- Use the output file to **brute-force cloud storage services**
- Try different **keywords** (e.g., `test`, `dev`, `backup`, `logs`)
- Use tools like `ffuf` or `gau` to find exposed bucket URLs

## ⚠️ Disclaimer
This tool is intended for **educational and ethical security testing purposes** only. Unauthorized access to data or systems you do not own is **illegal**. Always obtain **proper permission** before conducting security research.

Happy Hacking! 🐞💻

