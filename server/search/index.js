const mocks = require('../__mocks__')

// TODO: use supabase for hosting static files / DB instead of mocks
const SearchController = (req, res, next) => {
    try {
        const { q: query } = req.query
        const response = mocks.filter(items => items.title.toLowerCase().includes(query.toLowerCase()))
        res.send(JSON.stringify(response))
    } catch (e) {
        next(e)
    }
}

module.exports = SearchController