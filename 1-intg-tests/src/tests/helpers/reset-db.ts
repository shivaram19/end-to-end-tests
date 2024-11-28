import { prisma } from "../../db"


export async function clearDB(){
  await prisma.$transaction([
    prisma.request.deleteMany()
  ])
}