import React, { useState } from 'react';
import ReactMarkdown from 'react-markdown';

const MarkdownEditor = () => {
    const [markdown, setMarkdown] = useState('type markdown here');

    const handleMarkdownChange = (event) => {
        setMarkdown(event.target.value);
    };

    const reverseSentence = (sentence) => {
        const reversed = sentence.split('').reverse().join('');
        return reversed.charAt(0).toUpperCase() + reversed.slice(1);
    };

    const data = [
        [{ name: 'John', "age": 25 }, { name: 'Jane', "age": 30 }],
        [{ name: 'Bob', "age": 35 }]
    ];

    const names = data.flatMap((array) => array.map((obj) => obj.name));

    return (
        <div>
            <textarea value={markdown} onChange={handleMarkdownChange} />
            <ReactMarkdown>{reverseSentence(markdown)}</ReactMarkdown>
            <div>{names}</div>
        </div>
    );
};

export default MarkdownEditor;
