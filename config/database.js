module.exports = ({ env }) => ({
  defaultConnection: 'default',
  connections: {
    default: {
      connector: 'bookshelf',
      settings: {
        client: 'mysql',
        host: env('DATABASE_HOST', '127.0.0.1'),
        port: env.int('DATABASE_PORT', 3306),
        database: env('DATABASE_NAME', 'backend_Tkonstruye'),
        username: env('DATABASE_USERNAME', 'nokoarts'),
        password: env('DATABASE_PASSWORD', 'n0k04rt5'),
        ssl: env.bool('DATABASE_SSL', false),
      },
      options: {}
    },
  },
});
