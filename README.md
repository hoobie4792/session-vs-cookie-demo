# README

## Oversview
This is a very simple app that stores the same data into an unencrypted and session cookie. The idea to see the differences between when they both contain the same data.

The session cookie is stored in _cookie_v_session_demo_session, and the regular cookie is stored in value. You can access these by opening the developer console on chrome and selection Appliation -> Cookies

## Instructions

1. Start the rails server (rails s)
2. Go to [localhost:3000](localhost:3000) on your web browser
3. Play around and watch the session and value cookies update

## What I learned / observed
* You can store much more data in regular cookies
  * Max size for any cookie is 4096 bytes (characters are 1 byte long)
  * Encryption of the session cookie increases size.
* When you move to navigate to another website and then back to [localhost:3000](localhost:3000), Chrome does not delete the cookies. Chrome appears to only delete the cookies when you tell it to do so manually, or the broswer closes.