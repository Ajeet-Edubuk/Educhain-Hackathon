# Educhain-Hackathon
## Frontend code of Eduprovince's dApp integrated with Educhain Blockchain (Testnet)

Eduprovince makes credentials verification and background checks secure, efficient, cost-effective, and fraud-free using AI & Blockchain Technology. Since launch, Eduprovince has recorded 20,000+ certificates on the blockchain, has secured partnerships with 15 universities and third party background verification companies.  Globally recognized with 40+ awards on merit, including Best Edtech Startup in G20 Conference, and media recognition from CNBC, CNN, Forbes, Economic Times and Grants from major Blockchains, Edubuk has build on Solana chain now as we prepare to Launch as a part of Singapore based Tenity's accelerator program. We are setting new standards in the credentials & background verification industry, globally.

Whitepaper, Pitchdeck and One-Pager: https://drive.google.com/drive/folders/1fA-XGaz3OWDLDFFHLfqSbEGPv3xvEAAq?usp=sharing

## Check out demo video : https://www.youtube.com/watch?v=J19gpJ49vGU

**There are 4 stakeholders :**

1.) Issuer: University or Employer who issues the academic certificate or Work-Experience certificate.

2.) Holder: Student or Employee with whom this certificate resides.

3.) Verifier: Other Universities or Other Employers who directly wish to check the authenticity of the credential of the student on the blockchain. 

4.) Requestor: Third party background verification companies: These companies request the candidate to share their digitally verified certificate stored on the blockchain with them for verification purposes.

## Screenshots
![image](https://github.com/user-attachments/assets/c7e9eb9b-4f99-4fa8-8aa9-1aa32d7f86bd)
![image](https://github.com/user-attachments/assets/c816ddb7-68af-4d08-b96f-fe3509df3db7)
![image](https://github.com/user-attachments/assets/72147c0c-4cfc-44a4-8800-b02bcdcb801e)
![image](https://github.com/user-attachments/assets/76b24731-0365-4d0e-9ce7-14a2a4700042)
![image](https://github.com/user-attachments/assets/983c59b6-e628-490b-aa30-48497fe6a370)
![image](https://github.com/user-attachments/assets/81cbd8ff-802c-4cd1-b23f-e62debb1bc11)
![image](https://github.com/user-attachments/assets/0fd8f500-a17b-4bbc-b667-458ebc398465)
![image](https://github.com/user-attachments/assets/e47ae541-5be4-4eef-a793-3bf2f37a14d8)
![image](https://github.com/user-attachments/assets/ee2d25db-1dc4-49b9-9af0-7b20078eba93)
![image](https://github.com/user-attachments/assets/cdbe9e06-ab0d-49a4-bc2a-b8f8a836682d)
![image](https://github.com/user-attachments/assets/f0ab3009-a592-495f-a298-209b40301024)



**This project includes a decentralized application (dApp) for recording and verifying certificates on the Educhain blockchain. The dApp has two main components:**

**1. e-Sealing**

The e-Sealing Tab allows users to register certificates on the blockchain by signing the transaction using a Web3 wallet. When registering a certificate:
Metadata Fields: Users provide three metadata fields:
Certificate Issued To: The beneficiary of the certificate.
Certificate Issued By: The issuing authority.
Certificate Type: Description of the certificate.
Upload Certificate: Users upload a digital copy of the certificate from their local computer.
Register File Hash: Clicking "Register File Hash" generates a cryptographic hash of the file and creates a transaction on the blockchain. This process records six fields:
Beneficiary
Certifying Authority
Certificate Details
Unique file hash (cryptographic)
Timestamp (when the certificate was recorded in UTC)
Witness (certifying authority's wallet address)

**2. Verification**
The Verification Tab allows users to upload a digital certificate and click "Verify Certificate." The dApp retrieves the six fields from the blockchain to verify the information. If all fields match, it displays a "Certificate Verified" message. If the certificate has been tampered with or was not registered on the chain, it shows "Error! Certificate Not Verified."

**Use Cases**
This dApp has various applications requiring immutable and verifiable records of certification, such as:
- **Educational Credentials**
- **Professional Licenses**
- **Authenticity Certificates for Digital or Physical Assets**

## Tech Stack
  - Frontend: React,Tailwind,CSS.
  - Backend: Nodejs, ExpressJs, MongoDB.
  - Smart Contract: Solidity.
  - IDE: Remix-Ethereum.
  - Blockchain Network: Educhain Testnet.
  - Libraries: etherjs,papaparse,axios,nanoid etc.
  - Decentralized cloud storage:IPFS
