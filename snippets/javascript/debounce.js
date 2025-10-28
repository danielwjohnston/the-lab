/**
 * Debounce Function
 * Delays execution of a function until after a specified time has elapsed
 * since the last time it was invoked.
 * 
 * @param {Function} func - The function to debounce
 * @param {number} wait - The delay in milliseconds
 * @returns {Function} The debounced function
 * 
 * Usage:
 *   const debouncedSearch = debounce((query) => search(query), 300);
 *   input.addEventListener('keyup', (e) => debouncedSearch(e.target.value));
 */
function debounce(func, wait) {
  let timeout;
  return function executedFunction(...args) {
    const later = () => {
      clearTimeout(timeout);
      func(...args);
    };
    clearTimeout(timeout);
    timeout = setTimeout(later, wait);
  };
}

module.exports = debounce;
