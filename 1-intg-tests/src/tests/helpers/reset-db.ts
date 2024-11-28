import { primsa } from "../../db"


export async function clearDB(){
  await primsa.$transaction([
    primsa.request.deleteMany()
  ])
}