# Rails API Simple Token Authentication with Devise

## This is how it's done

If you've been wandering around teh internets and wondering: "How on earth there is no one, right, standard way to do token authentication for Rails APIs?", you've come to the right place.

I've been there and I thought: "What the hell, Rails Community?"
But apparently Rails Community is also me, so here's my input.

I'm using:
* https://github.com/rails-api/rails-api (0.3.1),
* https://github.com/plataformatec/devise (3.4.1),
* https://github.com/gonzalo-bulnes/simple_token_authentication (1.6.0).

It's November 2014 and this is how it's done.

## Then, to the point

The knowledge is hidden in the commits. Go through them one by one and you will know what to do. Don't get frightened or carried away, there's very little to do by hand. Although, keep in mind that configuration of devise is not a part of this tutorial, this is supposed to be quick, standard and automatic.

## How it should work after everything is prepared

Try to get data from the dummy endpoint.

```
curl -H "Content-Type: application/json" -X GET http://localhost:3000/asdf.json
{"error":"You need to sign in or sign up before continuing."}
```

Sign up a user (sing in also returns authentication token).

```
curl -H "Content-Type: application/json" -X POST -d '{ "user": { "email": "a@b.com", "password": "niewola123" } }' http://localhost:3000/users.json
{"id":3,"email":"a@b.com","created_at":"2014-11-27T22:48:38.025Z","updated_at":"2014-11-27T22:48:38.036Z","authentication_token":"8higdvxsm-VhnTY_9tst"}
```

Try again with authentication headers.

```
curl -H "Content-Type: application/jsoni" -H "X-User-Token: 8higdvxsm-VhnTY_9tst" -H "X-User-Email: a@b.com" -X GET http://localhost:3000/asdf.json
{"message":"Well done!"}
```

See other devise endpoints.

```
rake routes
```

Be wished good luck.

```
echo Good luck!
```

## Dear Rails Community

In case there's anything wrong in here, point it out, please. But as for me, it seems like a solution I've been looking for.
