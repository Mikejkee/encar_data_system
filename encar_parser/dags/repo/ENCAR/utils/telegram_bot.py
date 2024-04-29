import logging
from aiogram import Bot, Dispatcher
import aiohttp


logging.getLogger('asyncio').setLevel(logging.CRITICAL)
# logging.basicConfig(level=logging.INFO)

API_TOKEN = ''

bot = Bot(token=API_TOKEN)
dp = Dispatcher()
session = aiohttp.ClientSession()

group_chat_id = '-4051304049'


async def send_data_to_group(search_tg_remind_id, text):
    async with session:
        await bot.send_message(group_chat_id, f'{text}:\n' + ' '.join(map(str, search_tg_remind_id)))
