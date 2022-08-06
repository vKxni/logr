import express, { Express, Request, Response } from 'express';
import mongoose from 'mongoose';
import cors from 'cors';

import User from "./database/models/User";
import { fetchData } from "./api";

import "dotenv/config"

// app config
const app: Express = express();
const port: number = 4000;

app.use(cors({
    origin: 'http://localhost:3000',
    credentials: true,
    allowedHeaders: ['Content-Type', 'Authorization', 'Accept'],
}));

app.get('/api', (req: Request, res: Response) => {
    fetchData().then(async ip => {
        res.send(ip);

        // check if the data alr exists
        const dataQuery = await User.findOne({ ip });
        if (dataQuery) return;

        // if not, save a new user
        /* const newUser = */ await User.create({
            ip: ip
        });
    });
})

const LaunchApp = async (): Promise<void> => {
    try {
        await mongoose.connect(process.env.MONGO_LINK || "mongodb://localhost:27017/backend")
        app.listen(port, () => {
            console.log("Backend is running!")
        });
    } catch (error: unknown) {
        console.log(error);
        process.exit(1);
    }
};
void LaunchApp();