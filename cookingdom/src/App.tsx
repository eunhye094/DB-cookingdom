//20191074 정은혜

import { useState, useEffect } from 'react'
import './App.css'
import axios from 'axios'

export default function App() {
  return (
    <div>
	    <p><img src={`https://cookingdom-shrgo.run.goorm.io/images/logo.jpg`} alt="logo" className='logo'/></p>
		<h2>🏰20191074 정은혜🏰</h2>
		<ul>
			<li><a href="#equipment">📌 쿠키별 추천 조합</a></li>
			<li><a href="#cookie">📌 쿠키</a></li>
			<li><a href="#topping">📌 토핑</a></li>
			<li><a href="#treasure">📌 보물</a></li>
		</ul>
		<article id="equipment">
			<h1>✨쿠키별 추천 조합✨</h1>
			<EquipmentTable/>
		</article>
		<article id="cookie">
			<h1>✨쿠키✨</h1>
			<CookieTable/>
		</article>
		<article id="topping">
			<h1>✨토핑✨</h1>
			<ToppingTable/>
		</article>
		<article id="treasure">
			<h1>✨보물✨</h1>
			<TreasureTable/>
		</article>
    </div>
  )
}

//쿠키별 추천 조합 테이블 정의
const EquipmentTable = () => {
	const [equipments, setEquipments] = useState<any[]>([])
	
	const fetchEquipment = async() => {
		try {
			const res = await axios.get('https://cookingdom.run.goorm.io/equipment')
	        console.log(res)
			setEquipments(res.data)
		} catch (err) {
			console.log(err)
		}
	}
	
	useEffect(() => {
		fetchEquipment()
	}, [])
    
    return (
        <table>
            <thead>
                <tr key='0'>
                    <th>쿠키</th>
					<th>쿠키 이미지</th>
                    <th>토핑</th>
					<th>토핑 이미지</th>
					<th>보물</th>
					<th>보물 이미지</th>
                </tr>
            </thead>
            <tbody>
				{equipments.map((equipment, index) =>
                    <tr key={index}>
                        <td>{equipment.cookie}</td>
						<td><img src={`https://cookingdom-shrgo.run.goorm.io/images/cookie/${equipment.cookie_img}`} alt="cookie" className='cookieArt'/></td>
                        <td>{equipment.topping}</td>
						<td><img src={`https://cookingdom-shrgo.run.goorm.io/images/topping/${equipment.topping_img}`} alt="topping" className='toppingArt'/></td>
						<td>{equipment.treasure}</td>
						<td><img src={`https://cookingdom-shrgo.run.goorm.io/images/treasure/${equipment.treasure_img}`} alt="treasure" className='treasureArt'/></td>
                    </tr>
                )}
            </tbody>
        </table>
    )
}

//쿠키 테이블 정의
const CookieTable = () => {
	const [cookies, setCookies] = useState<any[]>([])
	
	const fetchCookie = async() => {
		try {
			const res = await axios.get('https://cookingdom.run.goorm.io/cookie')
	        console.log(res)
			setCookies(res.data)
		} catch (err) {
			console.log(err)
		}
	}
	
	useEffect(() => {
		fetchCookie()
	}, [])
    
    return (
        <table>
            <thead>
                <tr key='0'>
					<th>이미지</th>
                    <th>이름</th>
                    <th>등급</th>
                    <th>전투유형</th>
                </tr>
            </thead>
            <tbody>
				{cookies.map((cookie, index) =>
                    <tr key={index}>
						<td><img src={`https://cookingdom-shrgo.run.goorm.io/images/cookie/${cookie.image}`} alt="cookie" className='cookieArt'/></td>
                        <td>{cookie.name}</td>
                        <td>{cookie.grade}</td>
						<td>{cookie.type}</td>
                    </tr>
                )}
            </tbody>
        </table>
    )
}

//토핑 테이블 정의
const ToppingTable = () => {
	const [toppings, setToppings] = useState<any[]>([])
	
	const fetchTopping = async() => {
		try {
			const res = await axios.get('https://cookingdom.run.goorm.io/topping')
	        console.log(res)
			setToppings(res.data)
		} catch (err) {
			console.log(err)
		}
	}
	
	useEffect(() => {
		fetchTopping()
	}, [])
    
    return (
        <table>
            <thead>
                <tr key='0'>
					<th>이미지</th>
                    <th>이름</th>
                    <th>효과</th>
                </tr>
            </thead>
            <tbody>
				{toppings.map((topping, index) =>
                    <tr key={index}>
						<td><img src={`https://cookingdom-shrgo.run.goorm.io/images/topping/${topping.image}`} alt="topping" className='toppingArt'/></td>
                        <td>{topping.name}</td>
                        <td>{topping.effect}</td>
                    </tr>
                )}
            </tbody>
        </table>
    )
}

//보물 테이블 정의
const TreasureTable = () => {
	const [treasures, setTreasures] = useState<any[]>([])
	
	const fetchTreasure = async() => {
		try {
			const res = await axios.get('https://cookingdom.run.goorm.io/treasure')
	        console.log(res)
			setTreasures(res.data)
		} catch (err) {
			console.log(err)
		}
	}
	
	useEffect(() => {
		fetchTreasure()
	}, [])
    
    return (
        <table>
            <thead>
                <tr key='0'>
					<th>이미지</th>
                    <th>이름</th>
					<th>등급</th>
					<th>사용 유형</th>
                    <th>효과</th>
                </tr>
            </thead>
            <tbody>
				{treasures.map((treasure, index) =>
                    <tr key={index}>
						<td><img src={`https://cookingdom-shrgo.run.goorm.io/images/treasure/${treasure.image}`} alt="treasure" className='treasureArt'/></td>
                        <td>{treasure.name}</td>
                        <td>{treasure.grade}</td>
                        <td>{treasure.type}</td>
                        <td>{treasure.effect}</td>
                    </tr>
                )}
            </tbody>
        </table>
    )
}