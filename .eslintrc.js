module.exports = {
  extends: ['eslint:recommended', 'google'],
  env: {
    jquery: true,
    browser: true,
    node: true
  },
  globals: {
    DS: true,
    _: true,
    Highcharts: true,
    MQ: true
  },
  rules: {
    'max-len': [
      2,
      {
        code: 150, // Codezeilen max. 150 Zeichen.
        tabWidth: 2, // siehe oben.
        ignoreComments: true, // Kommentare und
        ignoreUrls: true // URLs können beliebig viele Zeichen auf einer Zeile enthalten
      }
    ],
    'require-jsdoc': 'off',
    'one-var': 'off',
    'spaced-comment': 'off'
  }
}
