import { pool } from '../db.js';

export const getUsuarios = async (req,res) => {
    const [result] = await pool.query("SELECT * FROM Usuarios;");
    res.json(result)
}

export const getRutinaUsuario = async (req,res) => {
    const {id} = req.params;
    const [result] = await pool.query("SELECT * FROM Rutinas WHERE id_usuario = ?;", [id]);
    res.json(result)
}

export const getEjercicios = async (req,res) => {
    const [result] = await pool.query("SELECT * FROM Ejercicios;");
    res.json(result)
}

export const getEjercicioPopular = async (req,res) => {
    const [result] = await pool.query("SELECT id_ejercicio, COUNT(*) as total_usuarios FROM Rutinas GROUP BY id_ejercicio ORDER BY total_usuarios DESC LIMIT 1;");
    res.json(result)
}
