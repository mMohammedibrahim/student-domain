# 🚀 Heroku Deployment Commands

# 1. Login to Heroku
heroku login

# 2. Create your app
heroku create voicebot-mohamedibrahim

# 3. Set environment variables
heroku config:set ENVIRONMENT=production

# 4. Deploy your app
git push heroku main

# 5. Add your custom domain
heroku domains:add www.mohamedibrahimitsmvec.me

# 6. Get SSL certificate (automatic)
# Heroku will provide SSL automatically

# 7. Open your app
heroku open
