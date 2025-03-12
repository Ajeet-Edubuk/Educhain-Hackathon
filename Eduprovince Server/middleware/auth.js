import jwt from 'jsonwebtoken';
import dotenv from 'dotenv'
dotenv.config();
const secret_Key = process.env.secret_Key;
const payloadData = process.env.payloadData;
export const generateToken =()=> {
// Set `noTimestamp` to true to exclude `iat`
//const options = { noTimestamp: true };
const tokenPayLoad = {service:payloadData};
const nonExpiryToken = jwt.sign(tokenPayLoad,secret_key);
console.log("Token : ",nonExpiryToken)
}

export const authenticateToken = (req,res,next)=>{
    const token = req.headers['authorization'] && req.headers['authorization'].split(' ')[1];
    console.log("Token value",token);
    if(!token)
        return res.status(401).json({message:'Token Required'});
    //console.log("secret key",secret_Key)
    jwt.verify(token,secret_Key,(err,decoded)=>{
        //console.log("payload data ",decoded)
        if(err) return res.status(403).json({message:'Invalid Token',
            error:err
        });
        next();
    });

}