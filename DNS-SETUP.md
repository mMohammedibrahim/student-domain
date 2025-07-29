# 🌐 DNS Configuration for www.mohamedibrahimitsmvec.me

## After Deployment, Add These DNS Records:

### For Heroku:
```
Type: CNAME
Name: www
Value: voicebot-mohamedibrahim.herokuapp.com
TTL: 300

Type: A (for root domain)
Name: @
Value: (Get from: heroku domains --app voicebot-mohamedibrahim)
```

### For Railway:
```
Type: CNAME
Name: www
Value: [your-app].up.railway.app
TTL: 300
```

### For Render:
```
Type: CNAME
Name: www
Value: [your-app].onrender.com
TTL: 300
```

## Where to Add DNS Records:
- Go to your domain provider (GoDaddy, Namecheap, etc.)
- Find DNS Management section
- Add the records above
- Wait 5-15 minutes for propagation

## Verify DNS:
```bash
nslookup www.mohamedibrahimitsmvec.me
```
