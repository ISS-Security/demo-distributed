# Run from tux of web application that uses Redis:

redis = Redis.new(url: app.settings.config.REDIS_URL)

redis.set('soumya', {name: 'Soumya Ray', department: 'ISS'}.to_json)
redis.set('haochuan', {name: 'Hao-Chuan Wang', department: 'ISA'}.to_json)
redis.keys

JSON.parse( redis.get('soumya') )

redis.keys.each { |key| redis.del(key) }
