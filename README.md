# Extract Data using AWK command

This is just an example of dataset extracted from [ Kaggle ](https://www.kaggle.com/samuelgerald/dki-jakarta) using AWK command for personal use. I have no responsibility if any of the data match with real person/identity.

## Requirements
- **Tools**
  - bash 5.0.17
  - awk 5.1.0
- **Dataset**
  - [Kaggle](https://www.kaggle.com/samuelgerald/dki-jakarta?select=Pedagang-Lokasi-Sementara-.csv)

## How To Use

### 1. Download dataset

You need to download dataset first. The link has been added on the **Requirements** section.

### 2. Extract Data

Execute *extract.sh* file by running this command

```bash
chmod +x extract.sh
./extract.sh dataset.csv > extract_result.txt
```

A new file named *extract_result.txt* will appear to save the extracted data. The content would be similar with *extract.txt*

### 3. Append Data

Execute *add_phone.sh* file by running this command

```bash
chmod +x add_phone.sh
./add_phone.sh extract_result.txt > final_result.txt
```

The file named *final_result.txt* will appear as the result of the executed command. The content would be similar with *result.txt*
