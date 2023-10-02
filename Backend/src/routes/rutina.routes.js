import { Router } from "express";
import { getUsuarios, getRutinaUsuario, getEjercicios, getEjercicioPopular } from "../controllers/rutina.controllers.js";

const router = Router()

router.get('/usuarios', getUsuarios);
router.get('/rutina/:id', getRutinaUsuario);
router.get('/ejercicios', getEjercicios);
router.get('/ejercico-popular', getEjercicioPopular);

export default router