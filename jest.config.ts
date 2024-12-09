import { Config } from '@jest/types';

const config: Config.InitialOptions = {
  preset: 'ts-jest',
  testEnvironment: 'jest-environment-jsdom',
  setupFilesAfterEnv: ['<rootDir>/tests/setupTests.ts'],
  transform: {
    '^.+\\.(ts|tsx)$': 'ts-jest',     // Handle TypeScript files with ts-jest
    '^.+\\.scss$': 'jest-transform-stub',  // Add this line to mock SCSS imports
  },
  moduleFileExtensions: ['js', 'jsx', 'ts', 'tsx', 'scss'],  // Add .scss extension
  transformIgnorePatterns: ['/node_modules/'],  // Ignore node_modules for transformation
};

export default config;