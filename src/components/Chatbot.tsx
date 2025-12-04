import { useState, useRef, useEffect } from 'react';
import { MessageCircle, X, Send, Bot, User } from 'lucide-react';

interface Message {
    id: string;
    text: string;
    sender: 'user' | 'bot';
    timestamp: Date;
}

export default function Chatbot() {
    const [isOpen, setIsOpen] = useState(false);
    const [messages, setMessages] = useState<Message[]>([
        {
            id: '1',
            text: "Hi! I'm your university search assistant. I can help you find the perfect university, answer questions about admissions, scholarships, and more. How can I help you today?",
            sender: 'bot',
            timestamp: new Date(),
        },
    ]);
    const [inputMessage, setInputMessage] = useState('');
    const [isTyping, setIsTyping] = useState(false);
    const messagesEndRef = useRef<HTMLDivElement>(null);

    const scrollToBottom = () => {
        messagesEndRef.current?.scrollIntoView({ behavior: 'smooth' });
    };

    useEffect(() => {
        scrollToBottom();
    }, [messages]);

    const getMockResponse = (userMessage: string): string => {
        const message = userMessage.toLowerCase();

        // Greetings
        if (message.match(/^(hi|hello|hey|good morning|good afternoon)/)) {
            return "Hello! 👋 I'm here to help you find the perfect university. You can ask me about:\n\n• University recommendations\n• Admission requirements\n• Scholarships and funding\n• Application deadlines\n• IELTS requirements\n• Tuition fees\n\nWhat would you like to know?";
        }

        // University recommendations
        if (message.includes('recommend') || message.includes('suggest') || message.includes('best university')) {
            return "I'd be happy to recommend universities! To give you the best suggestions, could you tell me:\n\n1. What field do you want to study?\n2. Which countries are you interested in?\n3. What's your budget range?\n4. Your IELTS score (if you have one)\n\nOr you can use our AI Recommendation tool above for personalized suggestions! 🎓";
        }

        // Scholarships
        if (message.includes('scholarship') || message.includes('funding') || message.includes('financial aid')) {
            return "Great question about scholarships! 💰\n\nMany universities in our database offer scholarships:\n\n• Merit-based scholarships (up to 50% tuition)\n• Need-based financial aid\n• International student scholarships\n• Research assistantships\n\nYou can filter universities with scholarships using the filter panel on the left. Would you like me to tell you about specific countries' scholarship opportunities?";
        }

        // IELTS
        if (message.includes('ielts') || message.includes('english test') || message.includes('language requirement')) {
            return "IELTS requirements vary by university and country:\n\n🇺🇸 USA: Usually 6.5-7.0\n🇬🇧 UK: Usually 6.5-7.5\n🇨🇦 Canada: Usually 6.5-7.0\n🇦🇺 Australia: Usually 6.5-7.0\n🇩🇪 Germany: Usually 6.0-6.5\n\nSome universities also accept TOEFL or Duolingo. You can use our filters to find universities matching your IELTS score!";
        }

        // Deadlines
        if (message.includes('deadline') || message.includes('when to apply') || message.includes('application date')) {
            return "Application deadlines vary by university and intake:\n\n📅 Fall Intake (September): Usually January-March\n📅 Spring Intake (January): Usually September-October\n📅 Summer Intake (May): Usually November-January\n\n⚠️ Early applications often have better scholarship opportunities! Check individual university pages for specific deadlines.";
        }

        // Tuition/Cost
        if (message.includes('tuition') || message.includes('cost') || message.includes('fee') || message.includes('expensive') || message.includes('cheap')) {
            return "Tuition fees vary significantly by country:\n\n💰 Germany/France: €0-€8,000/year (very affordable!)\n💰 Canada: $20,000-$35,000/year\n💰 Australia: $30,000-$45,000/year\n💰 UK: $25,000-$40,000/year\n💰 USA: $30,000-$60,000/year\n\nUse our tuition filter to find universities within your budget!";
        }

        // Admission requirements
        if (message.includes('admission') || message.includes('requirement') || message.includes('gpa') || message.includes('documents')) {
            return "Common admission requirements include:\n\n📄 Academic transcripts\n📄 Bachelor's degree (for Master's)\n📄 English proficiency test (IELTS/TOEFL)\n📄 Statement of Purpose\n📄 Letters of Recommendation (2-3)\n📄 CV/Resume\n📄 Valid passport\n\nMinimum GPA is usually 3.0/4.0, but competitive programs may require higher. Click on any university to see detailed requirements!";
        }

        // Countries
        if (message.includes('country') || message.includes('where should i')) {
            return "Popular study destinations:\n\n🇺🇸 USA - Top universities, diverse programs\n🇬🇧 UK - Historic institutions, 1-year Master's\n🇨🇦 Canada - High quality, immigration-friendly\n🇦🇺 Australia - Great lifestyle, work opportunities\n🇩🇪 Germany - Low tuition, strong engineering\n🇫🇷 France - Cultural experience, affordable\n\nEach has unique benefits! What's most important to you - cost, program quality, or post-study work opportunities?";
        }

        // Programs/Fields
        if (message.includes('computer science') || message.includes('engineering') || message.includes('business') || message.includes('medicine')) {
            const field = message.includes('computer') ? 'Computer Science' :
                message.includes('engineering') ? 'Engineering' :
                    message.includes('business') ? 'Business' : 'Medicine';

            return `${field} is a popular choice! 🎓\n\nTop destinations for ${field}:\n• USA - MIT, Stanford, Berkeley\n• UK - Oxford, Cambridge, Imperial\n• Canada - Toronto, UBC, Waterloo\n• Germany - TUM, RWTH Aachen\n\nUse the search bar above to find ${field} programs, or tell me your budget and preferences for personalized recommendations!`;
        }

        // Thank you
        if (message.includes('thank') || message.includes('thanks')) {
            return "You're welcome! 😊 Feel free to ask if you have more questions. Good luck with your university search! 🎓";
        }

        // Default response
        return "I can help you with:\n\n🎓 University recommendations\n💰 Scholarships and funding\n📝 Admission requirements\n📅 Application deadlines\n🌍 Country comparisons\n💵 Tuition fees\n📊 IELTS requirements\n\nWhat would you like to know more about?";
    };

    const handleSendMessage = async () => {
        if (!inputMessage.trim()) return;

        const userMessage: Message = {
            id: Date.now().toString(),
            text: inputMessage,
            sender: 'user',
            timestamp: new Date(),
        };

        setMessages((prev) => [...prev, userMessage]);
        setInputMessage('');
        setIsTyping(true);

        // Simulate AI thinking time
        setTimeout(() => {
            const botResponse: Message = {
                id: (Date.now() + 1).toString(),
                text: getMockResponse(inputMessage),
                sender: 'bot',
                timestamp: new Date(),
            };
            setMessages((prev) => [...prev, botResponse]);
            setIsTyping(false);
        }, 1000 + Math.random() * 1000); // Random delay between 1-2 seconds
    };

    const handleKeyPress = (e: React.KeyboardEvent) => {
        if (e.key === 'Enter' && !e.shiftKey) {
            e.preventDefault();
            handleSendMessage();
        }
    };

    return (
        <>
            {/* Chat Button */}
            {!isOpen && (
                <button
                    onClick={() => setIsOpen(true)}
                    className="fixed bottom-6 right-6 w-16 h-16 bg-gradient-to-br from-blue-600 to-teal-600 text-white rounded-full shadow-2xl hover:shadow-3xl hover:scale-110 transition-all duration-300 flex items-center justify-center z-50 group"
                    aria-label="Open chat"
                >
                    <MessageCircle size={28} className="group-hover:scale-110 transition-transform" />
                    <span className="absolute -top-1 -right-1 w-4 h-4 bg-red-500 rounded-full animate-pulse"></span>
                </button>
            )}

            {/* Chat Window */}
            {isOpen && (
                <div className="fixed bottom-6 right-6 w-96 h-[600px] bg-white rounded-2xl shadow-2xl flex flex-col z-50 overflow-hidden border border-gray-200">
                    {/* Header */}
                    <div className="bg-gradient-to-br from-blue-600 to-teal-600 text-white p-4 flex items-center justify-between">
                        <div className="flex items-center space-x-3">
                            <div className="w-10 h-10 bg-white/20 rounded-full flex items-center justify-center backdrop-blur-sm">
                                <Bot size={24} />
                            </div>
                            <div>
                                <h3 className="font-semibold">University Assistant</h3>
                                <p className="text-xs text-blue-100">Online • Always here to help</p>
                            </div>
                        </div>
                        <button
                            onClick={() => setIsOpen(false)}
                            className="p-2 hover:bg-white/20 rounded-lg transition-colors"
                            aria-label="Close chat"
                        >
                            <X size={20} />
                        </button>
                    </div>

                    {/* Messages */}
                    <div className="flex-1 overflow-y-auto p-4 space-y-4 bg-gray-50">
                        {messages.map((message) => (
                            <div
                                key={message.id}
                                className={`flex ${message.sender === 'user' ? 'justify-end' : 'justify-start'}`}
                            >
                                <div
                                    className={`flex items-start space-x-2 max-w-[80%] ${message.sender === 'user' ? 'flex-row-reverse space-x-reverse' : ''
                                        }`}
                                >
                                    <div
                                        className={`w-8 h-8 rounded-full flex items-center justify-center flex-shrink-0 ${message.sender === 'user'
                                                ? 'bg-blue-600 text-white'
                                                : 'bg-gradient-to-br from-blue-600 to-teal-600 text-white'
                                            }`}
                                    >
                                        {message.sender === 'user' ? <User size={16} /> : <Bot size={16} />}
                                    </div>
                                    <div>
                                        <div
                                            className={`rounded-2xl px-4 py-2 ${message.sender === 'user'
                                                    ? 'bg-blue-600 text-white rounded-tr-none'
                                                    : 'bg-white text-gray-800 rounded-tl-none shadow-sm border border-gray-200'
                                                }`}
                                        >
                                            <p className="text-sm whitespace-pre-line">{message.text}</p>
                                        </div>
                                        <p className="text-xs text-gray-500 mt-1 px-2">
                                            {message.timestamp.toLocaleTimeString([], {
                                                hour: '2-digit',
                                                minute: '2-digit',
                                            })}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        ))}

                        {isTyping && (
                            <div className="flex justify-start">
                                <div className="flex items-start space-x-2 max-w-[80%]">
                                    <div className="w-8 h-8 rounded-full flex items-center justify-center flex-shrink-0 bg-gradient-to-br from-blue-600 to-teal-600 text-white">
                                        <Bot size={16} />
                                    </div>
                                    <div className="bg-white rounded-2xl rounded-tl-none px-4 py-3 shadow-sm border border-gray-200">
                                        <div className="flex space-x-1">
                                            <div className="w-2 h-2 bg-gray-400 rounded-full animate-bounce"></div>
                                            <div className="w-2 h-2 bg-gray-400 rounded-full animate-bounce delay-100"></div>
                                            <div className="w-2 h-2 bg-gray-400 rounded-full animate-bounce delay-200"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        )}

                        <div ref={messagesEndRef} />
                    </div>

                    {/* Input */}
                    <div className="p-4 bg-white border-t border-gray-200">
                        <div className="flex items-end space-x-2">
                            <textarea
                                value={inputMessage}
                                onChange={(e) => setInputMessage(e.target.value)}
                                onKeyPress={handleKeyPress}
                                placeholder="Ask me anything about universities..."
                                className="flex-1 resize-none border border-gray-300 rounded-xl px-4 py-3 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent max-h-32 text-sm"
                                rows={1}
                            />
                            <button
                                onClick={handleSendMessage}
                                disabled={!inputMessage.trim()}
                                className="bg-gradient-to-br from-blue-600 to-teal-600 text-white p-3 rounded-xl hover:shadow-lg transition-all duration-200 disabled:opacity-50 disabled:cursor-not-allowed flex-shrink-0"
                                aria-label="Send message"
                            >
                                <Send size={20} />
                            </button>
                        </div>
                        <p className="text-xs text-gray-500 mt-2 text-center">
                            Press Enter to send • Shift+Enter for new line
                        </p>
                    </div>
                </div>
            )}
        </>
    );
}
