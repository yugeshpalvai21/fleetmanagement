const path = require('path');

module.exports = {
  entry: './index.js', // Adjust this path if your entry point is in a different location
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, 'dist'),
  },
};
