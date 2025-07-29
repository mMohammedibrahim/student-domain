# 🚀 VoiceBot Deployment Guide

## Deploy to Your Domain: www.mohamedibrahimitsmvec.me

### 🔧 Deployment Options

#### Option 1: Heroku (Recommended)
1. **Install Heroku CLI**: https://devcenter.heroku.com/articles/heroku-cli
2. **Login to Heroku**: `heroku login`
3. **Create Heroku App**: `heroku create voicebot-enterprise`
4. **Deploy**: 
   ```bash
   git add .
   git commit -m "Deploy VoiceBot to production"
   git push heroku main
   ```
5. **Set Custom Domain**:
   ```bash
   heroku domains:add www.mohamedibrahimitsmvec.me
   ```

#### Option 2: DigitalOcean App Platform
1. **Connect GitHub Repository**
2. **Auto-deploy from main branch**
3. **Add custom domain in settings**

#### Option 3: Railway
1. **Connect GitHub**: https://railway.app
2. **Deploy from repository**
3. **Add custom domain**

#### Option 4: Render
1. **Connect GitHub**: https://render.com
2. **Deploy web service**
3. **Add custom domain**

### 🌐 DNS Configuration
**Add these DNS records at your domain provider:**

```
Type: CNAME
Name: www
Value: [your-app-name].herokuapp.com

Type: A
Name: @
Value: [IP from hosting provider]
```

### 🔑 Environment Variables
Set these in your hosting platform:
```
ENVIRONMENT=production
PYTHONPATH=/app
```

### 📝 Files Created for Deployment:
- ✅ `Procfile` - Heroku process configuration
- ✅ `Dockerfile` - Container configuration
- ✅ `requirements-deploy.txt` - Production dependencies
- ✅ `runtime.txt` - Python version
- ✅ `.dockerignore` - Docker ignore patterns

### 🎯 Live URLs After Deployment:
- **Main App**: https://www.mohamedibrahimitsmvec.me
- **API Docs**: https://www.mohamedibrahimitsmvec.me/docs
- **Frontend**: https://www.mohamedibrahimitsmvec.me/frontend

### 🔄 Auto-Deploy Setup:
- Any push to `main` branch will auto-deploy
- CORS configured for your domain
- Production-ready configuration included

### 📊 Monitoring:
- Application logs available in hosting platform
- Health check endpoint: `/health`
- Performance metrics in dashboard
