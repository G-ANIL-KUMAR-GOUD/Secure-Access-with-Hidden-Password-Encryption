# **Secure Access with Hidden Password Encryption** #

## *Project Overview :* ##
This paper proposes a password authentication framework designed for secure password storage, aiming to enhance security in systems based on password authentication. This framework is easily integrable into existing authentication systems.

## *How It Works* ##
The process involves several stages for transforming a plain password into a secure format:

### Hashing: ###
The received plain password is hashed using a cryptographic hash function, such as SHA-256.
### Negative Password: ##
The hashed password is converted into a negative password.
### Encryption: 
The negative password is encrypted into an Encrypted Negative Password (ENP) using a symmetric-key algorithm, such as AES.
### Multi-iteration Encryption: ### 
Multi-iteration encryption may be applied to improve security further.
## Security Features ##
Resists lookup table attacks, including rainbow table attacks.
Provides stronger protection under dictionary attacks.
Does not require extra elements like salt, making it efficient and simple.
Combines cryptographic hash functions, negative password transformation, and symmetric encryption.
## Conclusion ##
This ENP-based framework provides a robust solution to password protection without requiring additional information except the plain password itself. It enhances the security of password-based authentication systems and prevents common precomputation attacks.
