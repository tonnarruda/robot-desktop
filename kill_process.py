import psutil
import sys

def kill_process_by_name(process_name):
    # Obtém uma lista de todos os processos em execução
    for process in psutil.process_iter(['pid', 'name']):
        try:
            # Verifica se o nome do processo corresponde ao fornecido
            if process.info['name'].lower() == process_name.lower():
                print(f"Encerrando o processo: {process.info['name']} (PID: {process.info['pid']})")
                # Força o encerramento do processo
                process.terminate()
                process.wait()  # Aguarda o encerramento do processo
                print(f"Processo {process.info['name']} encerrado com sucesso.")
        except (psutil.NoSuchProcess, psutil.AccessDenied, psutil.ZombieProcess):
            # Ignora processos que não podem ser acessados ou já foram encerrados
            pass

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Uso: python kill_process.py <nome_do_processo>")
        sys.exit(1)
    
    process_name = sys.argv[1]
    kill_process_by_name(process_name)
