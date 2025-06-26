# RealFraction 🏠

**RealFraction** is a blockchain-powered smart real estate platform. It simplifies property ownership, rental management, and investment through automation, tokenization, and smart infrastructure. This is the **MVP / template** stage—a scaffold for production implementation.

---

## 🌟 Key Features

- **Premium Discovery**: A high-end property browser with immersive animations (Framer Motion).
- **Secure Transactions**: Integrated payment gateways for secure bookings.
- **Robust Auth**: JWT-based authentication with role-based access control.
- **Dynamic Analytics**: (Optional/Planned) Performance tracking for property owners.
- **Responsive Design**: Flawless experience across Mobile, Tablet, and Desktop.

---

## 🛠 Tech Stack

- **Frontend**: React.js, Bootstrap 5, Swiper, Framer Motion.
- **Backend**: Node.js, Express.js.
- **Database**: MongoDB (Mongoose).
- **Smart Contracts**: Solidity, OpenZeppelin, PropertyNft (ERC-721), Pool (ERC-20), Auctions, RealFractionToken, Staking.
- **Icons/Fonts**: Font Awesome 6.

---

## 📂 Project Structure

The project follows a clean separation of concerns between the client and the server:

```bash
RealFraction/
├── public/                 # Static assets for the React frontend
├── contracts/              # Smart Contract
├── server/                 # Express Backend
│   ├── config/             # Environment & DB configurations
│   ├── controllers/        # Business logic & Request handlers
│   ├── models/             # Database schemas (Mongoose)
│   ├── routes/             # API Endpoint definitions
│   ├── middlewares/        # Auth, Validation, & Error handling
│   ├── utils/              # Helper functions & utility classes
│   └── server.js           # Server entry point
├── src/                    # React Frontend
│   ├── components/         # Reusable UI components
│   ├── images/             # UI images & assets
│   ├── pages/              # Main page views (Header, Properties, etc.)
│   ├── App.js              # Root React component
│   └── index.js            # Frontend entry point
├── package.json            # Project dependencies & scripts
└── .gitignore              # Git ignore rules
```

---

## 🚀 Getting Started

### 1. Prerequisites
- Node.js (v20+)
- Local MongoDB instance or Atlas URI.

### 2. Installation
Install dependencies in the root directory:
```bash
npm install
```

### 3. Environment Setup
For this MVP, environment variables are not required.

### 4. Launch
Start both the server and the frontend concurrently:
```bash
npm start
```

---

## ⚖️ License
This project is licensed under the MIT License.