def print_board(board):
    for row in board:
        print(row)
    print()

def is_safe(board, row, col, N):
    
    for i in range(row):
        if board[i][col] == 1:
            return False

    for i, j in zip(range(row, -1, -1), range(col, -1, -1)):
        if board[i][j] == 1:
            return False

    for i, j in zip(range(row, -1, -1), range(col, N)):
        if board[i][j] == 1:
            return False

    return True

def solve_n_queens(board, row, N):
    if row >= N:  
        return True

    for col in range(N):
        if is_safe(board, row, col, N):
            board[row][col] = 1  
            
            if solve_n_queens(board, row + 1, N):  
                return True

            board[row][col] = 0  

    return False

N = int(input("Enter the number of queens: "))
board = [[0] * N for _ in range(N)]  

if solve_n_queens(board, 0, N):
    print("Solution found:")
    print_board(board)
else:
    print("No solution exists for", N)
