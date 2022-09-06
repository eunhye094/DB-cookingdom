//20191074 정은혜

import express, { Request, Response } from "express"
import mysql from "mysql"
import cors from "cors"

const app = express()

app.use(cors())

const dbc = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: 'mysql1234',
	database: 'cookiedb'
})

dbc.connect()

app.listen('3001', () => {
	console.log('Server Started')
})

//DB에 쿠키별 추천 조합 정보 요청
app.get('/equipment', (req: Request, res: Response) => {
	const query: string = 'select cookie.name as cookie, topping.name as topping, treasure.name as treasure, cookie.image as cookie_img, topping.image as topping_img, treasure.image as treasure_img from equipment CROSS JOIN cookie CROSS JOIN topping CROSS JOIN treasure on equipment.cookie_id = cookie.id and equipment.topping_id = topping.id and equipment.treasure_id = treasure.id'
	dbc.query(query, (err, rows) => {
		if (err) return console.log(err)
		res.send(rows)
	})
})

//DB에 쿠키 정보 요청
app.get('/cookie', (req: Request, res: Response) => {
	const query: string = 'select * from cookie'
	dbc.query(query, (err, rows) => {
		if (err) return console.log(err)
		res.send(rows)
	})
})

//DB에 토핑 정보 요청
app.get('/topping', (req: Request, res: Response) => {
	const query: string = 'select * from topping'
	dbc.query(query, (err, rows) => {
		if (err) return console.log(err)
		res.send(rows)
	})
})

//DB에 보물 정보 요청
app.get('/treasure', (req: Request, res: Response) => {
	const query: string = 'select * from treasure'
	dbc.query(query, (err, rows) => {
		if (err) return console.log(err)
		res.send(rows)
	})
})