## Logr
A small APi Wrapper Web client to log users IPs in a multi language project. 

Take this as an example how to connect two complete different programming languages and even use Databases.

### Ports and Hosts
Client: 3000 | TypeScript React 

Backend: 4000 | Elixir Cowboy PostgreSQL 

Backend V2: 4000 | TypeScript ExpressJS with MongoDB

### Get started 
Warning: If you have no experience with Databases or anything related in this project, you should go back to the basics.

> Client
```
$ cd client

$ npm install

$ npm run dev
```

> Backend
```
$ cd backend
 
$ mix deps.get
```
Make sure to fill you the .env file or replace the credentials in the `runtime.exs` file. 

```
$ mix run --no-halt 
```

> Backend V2
```
$ cd express

$ npm install
```
Optionally fill out the Database link in the `.env` file. 

```
$ npm run build 

$ npm run start
```

> Changing databases

For the "Backend" repo, you can easily change the database when opening the `lib/users/repo.ex` file. 
Change the `adatapter` to `mongodb` or `mysql`, make sure to install it in the `mix.exs` file. 

For the "Backend V2" repo, you have to update the packages and the connection handling, you can use use some ORMs.

✌️ [Follow me -> https://github.com/vKxni](https://github.com/vKxni)