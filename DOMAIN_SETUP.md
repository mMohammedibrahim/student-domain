# 🌐 Domain Configuration for mohamedibrahimitsmvec.me

## Current Setup:
- Main Site: https://mohamedibrahimitsmvec.me (GitHub Pages)
- VoiceBot API: https://api.mohamedibrahimitsmvec.me (Railway/Heroku)

## DNS Configuration Needed:

### Keep GitHub Pages (Main Site):
```
Type: CNAME
Name: www
Value: mmohammedibrahim.github.io

Type: A
Name: @
Value: 185.199.108.153
Value: 185.199.109.153  
Value: 185.199.110.153
Value: 185.199.111.153
```

### Add API Subdomain:
```
Type: CNAME
Name: api
Value: [your-railway-app].up.railway.app
TTL: 300
```

## Result:
- ✅ Main site: https://mohamedibrahimitsmvec.me (Portfolio/Landing)
- ✅ VoiceBot API: https://api.mohamedibrahimitsmvec.me (FastAPI Backend)
- ✅ Combined experience: Frontend calls API seamlessly
