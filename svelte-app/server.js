const polka = require('polka');
const sirv = require('sirv');

const { PORT = 3000 } = process.env;
const dev = process.env.NODE_ENV === 'development';

const app = polka()
    .use(sirv('public', { dev }))
    .listen(PORT, (err) => {
        if (err) console.log('error', err);
        console.log(`Server is running on port ${PORT}`);
    });
