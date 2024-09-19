import psutil
import sys

def kill_process_by_name(process_name):
    for process in psutil.process_iter(['pid', 'name']):
        try:
            if process.info['name'].lower() == process_name.lower():
                print(f"Encerrando o processo: {process.info['name']} (PID: {process.info['pid']})")
                process.terminate()
                process.wait()
                print(f"Processo {process.info['name']} encerrado com sucesso.")
        except (psutil.NoSuchProcess, psutil.AccessDenied, psutil.ZombieProcess):
            pass

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Uso: python kill_process.py <nome_do_processo>")
        sys.exit(1)
    
    process_name = sys.argv[1]
    kill_process_by_name(process_name)
