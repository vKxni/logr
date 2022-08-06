import mongoose, { Schema } from 'mongoose';

const UserSchema = new Schema({
    ip: {
        type: String,
        required: true,
    }
}, { timestamps: true });

const UserModelSchema = mongoose.model("users", UserSchema);

export default UserModelSchema;